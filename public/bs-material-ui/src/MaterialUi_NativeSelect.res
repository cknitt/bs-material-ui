module RowsMin: {
  type t
  let int: int => t
  let float: float => t
  let string: string => t
} = {
  @unboxed
  type rec t = Any('a): t
  let int = (v: int) => Any(v)
  let float = (v: float) => Any(v)
  let string = (v: string) => Any(v)
}

type color = [#primary | #secondary]

module InputComponent: {
  type t
  let string: string => t
  let inputComponent_func: MaterialUi_Types.any => t
  let element: React.element => t
} = {
  @unboxed
  type rec t = Any('a): t
  let string = (v: string) => Any(v)
  let inputComponent_func = (v: MaterialUi_Types.any) => Any(v)
  let element = (v: React.element) => Any(v)
}

type margin = [#dense | #none]

module Rows: {
  type t
  let int: int => t
  let float: float => t
  let string: string => t
} = {
  @unboxed
  type rec t = Any('a): t
  let int = (v: int) => Any(v)
  let float = (v: float) => Any(v)
  let string = (v: string) => Any(v)
}

module RowsMax: {
  type t
  let int: int => t
  let float: float => t
  let string: string => t
} = {
  @unboxed
  type rec t = Any('a): t
  let int = (v: int) => Any(v)
  let float = (v: float) => Any(v)
  let string = (v: string) => Any(v)
}

module Classes = {
  type t = {
    "root": option<string>,
    "select": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "selectMenu": option<string>,
    "disabled": option<string>,
    "icon": option<string>,
    "iconOpen": option<string>,
    "iconFilled": option<string>,
    "iconOutlined": option<string>,
    "nativeInput": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~select: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~selectMenu: string=?,
    ~disabled: string=?,
    ~icon: string=?,
    ~iconOpen: string=?,
    ~iconFilled: string=?,
    ~iconOutlined: string=?,
    ~nativeInput: string=?,
    unit,
  ) => t = ""
}

module IconComponent: {
  type t
  let string: string => t
  let iconComponent_func: MaterialUi_Types.any => t
  let element: React.element => t
} = {
  @unboxed
  type rec t = Any('a): t
  let string = (v: string) => Any(v)
  let iconComponent_func = (v: MaterialUi_Types.any) => Any(v)
  let element = (v: React.element) => Any(v)
}

type variant = [#filled | #outlined | #standard]

@react.component @module("@material-ui/core")
external make: (
  ~\"aria-describedby": string=?,
  ~className: string=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
  ~onKeyUp: ReactEvent.Keyboard.t => unit=?,
  ~renderSuffix: MaterialUi_Types.any=?,
  ~rowsMin: RowsMin.t=?,
  ~style: ReactDOM.Style.t=?,
  ~autoComplete: string=?,
  ~autoFocus: bool=?,
  ~color: color=?,
  ~defaultValue: MaterialUi_Types.any=?,
  ~disabled: bool=?,
  ~disableUnderline: bool=?,
  ~endAdornment: React.element=?,
  ~error: bool=?,
  ~fullWidth: bool=?,
  ~id: string=?,
  ~inputComponent: InputComponent.t=?,
  ~margin: margin=?,
  ~multiline: bool=?,
  ~name: string=?,
  ~placeholder: string=?,
  ~readOnly: bool=?,
  ~required: bool=?,
  ~rows: Rows.t=?,
  ~rowsMax: RowsMax.t=?,
  ~startAdornment: React.element=?,
  ~\"type": string=?,
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~\"IconComponent": IconComponent.t=?,
  ~input: React.element=?,
  ~inputProps: {..}=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~value: MaterialUi_Types.any=?,
  ~variant: variant=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "NativeSelect"
