
            

      module Component: {
        type t;
        let string: (string) => t;
let callback: (unit => React.element) => t;
let element: (React.element) => t;
      } = {
        @unboxed
        type rec t =
          | Any('a): t;
          let string = (v: string) => Any(v);
let callback = (v: unit => React.element) => Any(v);
let element = (v: React.element) => Any(v);
      };
      

      module TabIndex: {
        type t;
        let int: (int) => t;
let float: (float) => t;
let string: (string) => t;
      } = {
        @unboxed
        type rec t =
          | Any('a): t;
          let int = (v: int) => Any(v);
let float = (v: float) => Any(v);
let string = (v: string) => Any(v);
      };
      

                module Type_enum: {
                    type t;
                    let button: t;
let reset: t;
let submit: t;
                } = {
                    @unboxed
                    type rec t =
                        | Any('a): t;

                    let button = Any("button");
let reset = Any("reset");
let submit = Any("submit");
                };
                

      module Type: {
        type t;
        let enum: (Type_enum.t) => t;
let string: (string) => t;
      } = {
        @unboxed
        type rec t =
          | Any('a): t;
          let enum = (v: Type_enum.t) => Any(v);
let string = (v: string) => Any(v);
      };
      

                module Edge: {
                    type t;
                    let start: t;
let \"end": t;
let \"false": t;
                } = {
                    @unboxed
                    type rec t =
                        | Any('a): t;

                    let start = Any("start");
let \"end" = Any("end");
let \"false" = Any(false);
                };
                

          module Classes = {
            type t = {
              .
              
                "root":option<option<string>>
                ,
                "checked":option<option<string>>
                ,
                "disabled":option<option<string>>
                ,
                "colorPrimary":option<option<string>>
                ,
                "colorSecondary":option<option<string>>
                
            };
            @bs.obj external make: (
              
                  ~root:
                  string=?
                  ,
                  ~checked:
                  string=?
                  ,
                  ~disabled:
                  string=?
                  ,
                  ~colorPrimary:
                  string=?
                  ,
                  ~colorSecondary:
                  string=?
                  
            , unit) => t = "";
          };
      

            type color = [ | #default | #primary | #secondary];
          

            type size = [ | #medium | #small];
          

            @react.component @bs.module("@material-ui/core") external make : (~centerRipple: option<bool>=?,
~component: option<Component.t>=?,
~disableTouchRipple: option<bool>=?,
~focusRipple: option<bool>=?,
~focusVisibleClassName: option<string>=?,
~href: option<string>=?,
~onBlur: option<ReactEvent.Focus.t => unit>=?,
~onClick: option<ReactEvent.Mouse.t => unit>=?,
~onDragLeave: option<ReactEvent.Mouse.t => unit>=?,
~onFocus: option<ReactEvent.Focus.t => unit>=?,
~onFocusVisible: option<MaterialUi_Types.any>=?,
~onKeyDown: option<ReactEvent.Keyboard.t => unit>=?,
~onKeyUp: option<ReactEvent.Keyboard.t => unit>=?,
~onMouseDown: option<ReactEvent.Mouse.t => unit>=?,
~onMouseLeave: option<ReactEvent.Mouse.t => unit>=?,
~onMouseUp: option<ReactEvent.Mouse.t => unit>=?,
~onTouchEnd: option<ReactEvent.Touch.t => unit>=?,
~onTouchMove: option<ReactEvent.Touch.t => unit>=?,
~onTouchStart: option<ReactEvent.Touch.t => unit>=?,
~tabIndex: option<TabIndex.t>=?,
~\"TouchRippleProps": option<Js.Dict.t<MaterialUi_Types.any>>=?,
~\"type": option<Type.t>=?,
~style: option<ReactDOMRe.Style.t>=?,
~children: option<'children>=?,
~className: option<string>=?,
~disableFocusRipple: option<bool>=?,
~edge: option<Edge.t>=?,
~checked: option<bool>=?,
~checkedIcon: option<React.element>=?,
~classes: option<Classes.t>=?,
~color: option<color>=?,
~disabled: option<bool>=?,
~disableRipple: option<bool>=?,
~icon: option<React.element>=?,
~id: option<string>=?,
~inputProps: option<Js.Dict.t<MaterialUi_Types.any>>=?,
~name: option<string>=?,
~onChange: option<(ReactEvent.Form.t) => unit>=?,
~required: option<bool>=?,
~size: option<size>=?,
~value: option<MaterialUi_Types.any>=?,
~key: option<string>=?,
~ref: option<ReactDOMRe.domRef>=?,) => React.element = "Radio";
        