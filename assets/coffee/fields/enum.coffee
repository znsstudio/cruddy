class Cruddy.Fields.Enum extends Cruddy.Fields.Base

    createEditableInput: (model) -> new Cruddy.Inputs.Select
        model: model
        key: @id
        prompt: @attributes.prompt
        items: @attributes.items

    createFilterInput: (model) -> new Cruddy.Inputs.Select
        model: model
        key: @id
        prompt: Cruddy.lang.any_value
        items: @attributes.items

    format: (value) ->
        items = @attributes.items

        if value of items then items[value] else "n/a"