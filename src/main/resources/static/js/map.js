ymaps.ready(init);

function init() {
    var myMap = new ymaps.Map("map", {
            center: [52.287054, 104.281047],
            zoom: 10
        }, {
            searchControlProvider: 'yandex#search'
        }),

    // Геообъект типа "Точка"
    placemark = new ymaps.GeoObject({
        geometry: {
            type: "Point",
            coordinates: [52.258407, 104.265211]
        },
        // Свойства
        properties: {
            //iconContent: 'Здесь!',
            balloonContent: 'Общежитие № 11'
        },
        options: {
            preset: 'islands#greenDotIconWithCaption'
        }
    }),

    // Линия
    polyline = new ymaps.GeoObject({
        geometry: {
            type: "LineString",
            coordinates: [
                [52.258350, 104.265239],
                [52.262998, 104.261205],
                [52.261696, 104.265392],
                [52.263379, 104.265437],
                [52.262981, 104.268849]
            ]
        }
    }),

    // Многоугольник
    polygon = new ymaps.GeoObject({
        geometry: {
            type: "Polygon",
            coordinates: [
                [[52.258542, 104.265313], [52.258223, 104.265477],
                 [52.258282, 104.265767], [52.258600, 104.265603]]
            ]
        }
    });

    myMap.geoObjects
        .add(placemark)
        .add(polyline)
        .add(polygon);
}