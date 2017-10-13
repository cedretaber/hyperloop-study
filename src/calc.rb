class CalcComponent
  include Hyperloop::Component::Mixin

  state x: 0
  state y: 0

  render DIV do
    CalcInput key: :x, value: state.x.to_s
    SPAN { "+" }
    CalcInput key: :y, value: state.y.to_s
    SPAN { "=#{state.x + state.y}" }
  end

  private

  def CalcInput(key:, value:)
    INPUT(value: value).on(:change) { |e| mutate.__send__(key, (e.target.value.to_i || 0)) }
  end
end
