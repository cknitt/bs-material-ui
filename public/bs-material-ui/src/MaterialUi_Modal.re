[@bs.obj]
external makePropsMui:
  (
    ~_BackdropProps: Js.t({..})=?,
    ~children: 'children=?,
    ~closeAfterTransition: bool=?,
    ~container: 'union_rvkd=?,
    ~disableAutoFocus: bool=?,
    ~disableBackdropClick: bool=?,
    ~disableEnforceFocus: bool=?,
    ~disableEscapeKeyDown: bool=?,
    ~disablePortal: bool=?,
    ~disableRestoreFocus: bool=?,
    ~hideBackdrop: bool=?,
    ~innerRef: 'union_r8rq=?,
    ~keepMounted: bool=?,
    ~manager: Js.t({..})=?,
    ~onBackdropClick: ReactEvent.Mouse.t => unit=?,
    ~onClose: 'any_ru3x=?,
    ~onEscapeKeyDown: ReactEvent.Keyboard.t => unit=?,
    ~onRendered: ReactEvent.Synthetic.t => unit=?,
    ~_open: bool,
    ~theme: Js.t({..})=?,
    ~key: string=?,
    ~_ref: React.Ref.t(Dom.element)=?,
    unit
  ) =>
  _ =
  "";

let makeProps =
    (
      ~_BackdropProps: option(Js.t({..}))=?,
      ~children: option('children)=?,
      ~closeAfterTransition: option(bool)=?,
      ~container:
         option(
           [ | `ObjectGeneric(Js.t({..})) | `Callback('genericCallback)],
         )=?,
      ~disableAutoFocus: option(bool)=?,
      ~disableBackdropClick: option(bool)=?,
      ~disableEnforceFocus: option(bool)=?,
      ~disableEscapeKeyDown: option(bool)=?,
      ~disablePortal: option(bool)=?,
      ~disableRestoreFocus: option(bool)=?,
      ~hideBackdrop: option(bool)=?,
      ~innerRef:
         option(
           [ | `Callback('genericCallback) | `ObjectGeneric(Js.t({..}))],
         )=?,
      ~keepMounted: option(bool)=?,
      ~manager: option(Js.t({..}))=?,
      ~onBackdropClick: option(ReactEvent.Mouse.t => unit)=?,
      ~onClose: option((ReactEvent.Synthetic.t, string) => unit)=?,
      ~onEscapeKeyDown: option(ReactEvent.Keyboard.t => unit)=?,
      ~onRendered: option(ReactEvent.Synthetic.t => unit)=?,
      ~open_: bool,
      ~theme: option(Js.t({..}))=?,
      ~key: option(string)=?,
      ~ref_: option(React.Ref.t(Dom.element))=?,
      (),
    ) =>
  makePropsMui(
    ~_BackdropProps?,
    ~children?,
    ~closeAfterTransition?,
    ~container=?
      container->(Belt.Option.map(v => MaterialUi_Helpers.unwrapValue(v))),
    ~disableAutoFocus?,
    ~disableBackdropClick?,
    ~disableEnforceFocus?,
    ~disableEscapeKeyDown?,
    ~disablePortal?,
    ~disableRestoreFocus?,
    ~hideBackdrop?,
    ~innerRef=?
      innerRef->(Belt.Option.map(v => MaterialUi_Helpers.unwrapValue(v))),
    ~keepMounted?,
    ~manager?,
    ~onBackdropClick?,
    ~onClose?,
    ~onEscapeKeyDown?,
    ~onRendered?,
    ~_open=open_,
    ~theme?,
    ~key?,
    ~_ref=?ref_,
    (),
  );

[@bs.module "@material-ui/core"] external make: React.component('a) = "Modal";
