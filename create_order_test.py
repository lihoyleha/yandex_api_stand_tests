# Мария Иванова, 1-я когорта — Финальный проект. Инженер по тестированию плюс
import sender_stand_request
import data 

# 1. По треку заказа можно получить данные о заказе:
def test_get_order_get_success_response():
    newOrder = sender_stand_request.post_new_order(data.order_body)

    assert newOrder.status_code == 201

    track = newOrder.json()['track']
    response = sender_stand_request.get_order(track)

    assert response.status_code == 200