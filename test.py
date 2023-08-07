def get_nested_value(obj, key):
    keys = key.split('/')
    for i in keys:
        obj = obj.get(i)
        if obj is None:
            return None
    return obj