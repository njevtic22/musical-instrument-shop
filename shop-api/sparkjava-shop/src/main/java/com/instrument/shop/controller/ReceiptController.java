package com.instrument.shop.controller;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.PagingFilteringUtil;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.dto.receipt.ReceiptViewDto;
import com.instrument.shop.mapper.ReceiptMapper;
import com.instrument.shop.model.Receipt;
import com.instrument.shop.service.ReceiptService;
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.PreAuthorize;
import com.sparkjava.context.annotation.QueryParam;
import com.sparkjava.context.annotation.QueryParamValues;
import com.sparkjava.context.annotation.RequestMapping;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

@Singleton
@RequestMapping("api/receipts")
public class ReceiptController {
    private final ReceiptService service;
    private final ReceiptMapper mapper;
    private final PagingFilteringUtil pagingFilteringUtil;

    @Inject
    public ReceiptController(ReceiptService service, ReceiptMapper mapper, PagingFilteringUtil pagingFilteringUtil) {
        this.service = service;
        this.mapper = mapper;
        this.pagingFilteringUtil = pagingFilteringUtil;
    }

    @GetMapping
    @PreAuthorize("MANAGER")
    public PaginatedResponse<ReceiptViewDto> getAll(
            @QueryParamValues(value = "filter", required = false) String[] filterParams,
            @QueryParamValues(value = "sort", required = false) String[] sortStr,
            @QueryParam(value = "page", defaultValue = "0") int page,
            @QueryParam(value = "size", defaultValue = "20") int size
    ) {
        Map<String, Object> filterData = pagingFilteringUtil.buildFilterData(filterParams);
        Sort sort = pagingFilteringUtil.buildSort(sortStr);
        PageRequest pageRequest = new PageRequest(page, size);

        PaginatedResponse<Receipt> allReceipts = service.getAll(filterData, sort, pageRequest);
        List<ReceiptViewDto> allReceiptsDto = allReceipts.data()
                .stream()
                .map(mapper::toViewDto)
                .toList();

        return new PaginatedResponse<>(
                allReceiptsDto,
                allReceipts.totalElements(),
                allReceipts.totalPages()
        );
    }
}
