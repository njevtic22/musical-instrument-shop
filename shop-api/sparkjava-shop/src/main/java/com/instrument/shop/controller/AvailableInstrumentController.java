package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.instrument.AddInstrumentDto;
import com.instrument.shop.dto.instrument.AvailableViewDto;
import com.instrument.shop.dto.instrument.UpdateInstrumentDto;
import com.instrument.shop.mapper.InstrumentMapper;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.service.AvailableInstrumentService;
import com.sparkjava.context.annotation.DeleteMapping;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.MethodOrder;
import com.sparkjava.context.annotation.PathParam;
import com.sparkjava.context.annotation.PostMapping;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.PutMapping;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestBody;
import com.sparkjava.context.annotation.RequestMapping;
import com.sparkjava.context.annotation.ResponseStatus;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.validation.Valid;
import spark.Request;
import spark.Response;

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/available-instruments")
public class AvailableInstrumentController {
    private final AvailableInstrumentService service;
    private final InstrumentMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public AvailableInstrumentController(AvailableInstrumentService service, InstrumentMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @PostMapping
    @MethodOrder(100)
    @ResponseStatus(201)
    @PreAuthorize("SALESMAN")
    public void add(Request request, Response response, @Valid @RequestBody AddInstrumentDto toAddDto) {
        AvailableInstrument toAdd = mapper.toModel(toAddDto);
        AvailableInstrument added = service.add(toAdd);

        response.header("location", request.url() + "/" + added.getId());
    }

    @GetMapping
    @MethodOrder(80)
    public PaginatedResponse<AvailableViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", defaultValue = {"id,asc"}) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, Object> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<AvailableInstrument> allInstruments = service.getAll(filterData, sort, pageRequest);
        List<AvailableViewDto> allInstrumentsDto = allInstruments.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allInstrumentsDto,
                allInstruments.totalElements(),
                allInstruments.totalPages()
        );
    }

    @GetMapping("/:id")
    @MethodOrder(60)
    public AvailableViewDto getById(@PathParam("id") Long id) {
        AvailableInstrument found = service.getById(id);
        return mapper.toViewDto(found);
    }

    @PutMapping("/:id")
    @MethodOrder(40)
    @PreAuthorize("SALESMAN")
    public AvailableViewDto update(@PathParam("id") Long id, @Valid @RequestBody UpdateInstrumentDto changesDto) {
        AvailableInstrument changes = mapper.toModel(changesDto);
        AvailableInstrument updated = service.update(id, changes);
        return mapper.toViewDto(updated);
    }

    @DeleteMapping("/:id")
    @MethodOrder(20)
    @ResponseStatus(204)
    @PreAuthorize("SALESMAN")
    public void delete(@PathParam("id") Long id) {
        service.delete(id);
    }

    @PutMapping("/:id/images")
    @MethodOrder(10)
    @PreAuthorize("SALESMAN")
    public AvailableViewDto addImages(@PathParam("id") Long id, @QueryParamValues("imageIds") Long[] imageIds) {
        AvailableInstrument updated = service.addImages(id, imageIds);
        return mapper.toViewDto(updated);
    }

    @DeleteMapping("/:id/images")
    @MethodOrder(5)
    @ResponseStatus(204)
    @PreAuthorize("SALESMAN")
    public void deleteImages(@PathParam("id") Long id, @QueryParamValues("imageIds") Long[] imageIds) {
        service.deleteImages(id, imageIds);
    }
}
