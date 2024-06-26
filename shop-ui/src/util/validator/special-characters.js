const specialChars = [
    "!",
    '"',
    "#",
    "$",
    "%",
    "&",
    "'",
    "(",
    ")",
    "*",
    "+",
    ",",
    "-",
    ".",
    "/",
    ":",
    ";",
    "<",
    "=",
    ">",
    "?",
    "@",
    "[",
    "\\",
    "]",
    "^",
    "_",
    "`",
    "{",
    "|",
    "}",
    "~",
    "¡",
    "¢",
    "£",
    "¤",
    "¥",
    "¦",
    "§",
    "¨",
    "©",
    "ª",
    "«",
    "¬",
    "­",
    "®",
    "¯",
    "°",
    "±",
    "²",
    "³",
    "´",
    "µ",
    "¶",
    "·",
    "¸",
    "¹",
    "º",
    "»",
    "¼",
    "½",
    "¾",
    "¿",
    "×",
    "÷",
    "–",
    "—",
    "―",
    "‗",
    "‘",
    "’",
    "‚",
    "‛",
    "“",
    "”",
    "„",
    "†",
    "‡",
    "•",
    "…",
    "‰",
    "′",
    "″",
    "‹",
    "›",
    "‼",
    "‾",
    "⁄",
    "⁊",
    "₠",
    "₡",
    "₢",
    "₣",
    "₤",
    "₥",
    "₦",
    "₧",
    "₨",
    "₩",
    "₪",
    "₫",
    "€",
    "₭",
    "₮",
    "₯",
    "₰",
    "₱",
    "₲",
    "₳",
    "₴",
    "₵",
    "₶",
    "₷",
    "₸",
    "₹",
    "₺",
    "₻",
    "₼",
    "₽",
    "₾",
];

const specialCharsRegex = new RegExp(`[${specialChars.join("\\")}]+`);

export default specialCharsRegex;
