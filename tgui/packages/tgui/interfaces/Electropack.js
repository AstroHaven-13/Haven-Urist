import { toFixed } from 'common/math';
import { useBackend } from 'tgui/backend';
import { Button, LabeledList, NumberInput, Section } from 'tgui/components';
import { Window } from 'tgui/layouts';

export const Electropack = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    power,
    code,
    frequency,
    minFrequency,
    maxFrequency,
  } = data;
  return (
    <Window
      width={260}
      height={137}>
      <Window.Content>
        <Section>
          <LabeledList>
            <LabeledList.Item label="Power">
              <Button
                icon={power ? 'power-off' : 'times'}
                content={power ? 'On' : 'Off'}
                selected={power}
                onClick={() => act('power')} />
            </LabeledList.Item>
            <LabeledList.Item
              label="Frequency"
              buttons={(
                <Button
                  icon="sync"
                  content="Reset"
                  onClick={() => act('reset', {
                    reset: "freq",
                  })} />
              )}>
              <NumberInput
                animate
                unit="kHz"
                step={0.2}
                stepPixelSize={6}
                minValue={minFrequency / 10}
                maxValue={maxFrequency / 10}
                value={frequency / 10}
                format={value => toFixed(value, 1)}
                width="80px"
                onDrag={(e, value) => act('freq', {
                  freq: value,
                })} />
            </LabeledList.Item>
            <LabeledList.Item
              label="Code"
              buttons={(
                <Button
                  icon="sync"
                  content="Reset"
                  onClick={() => act('reset', {
                    reset: "code",
                  })} />
              )}>
              <NumberInput
                animate
                step={1}
                stepPixelSize={6}
                minValue={1}
                maxValue={100}
                value={code}
                width="80px"
                onDrag={(e, value) => act('code', {
                  code: value,
                })} />
            </LabeledList.Item>
          </LabeledList>
        </Section>
      </Window.Content>
    </Window>
  );
};
