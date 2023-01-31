{% set payment_methods = ["bank_transfer", "credit_card", "gift_card"] %}

select
    {% for payment_method in payment_methods %}
    '{{payment_method}}',
    {% endfor %}
    {{ add_hundred(1) }}