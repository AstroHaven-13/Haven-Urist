import { Fragment } from 'inferno';
import { useBackend } from 'tgui/backend';
import { Box, Button, Section } from 'tgui/components';
import { Window } from 'tgui/layouts';

export const KeycardAuth = (props, context) => {
  const { act, data } = useBackend(context);
  return (
    <Window
      width={375}
      height={125}>
      <Window.Content>
        <Section>
          <Box>
            {data.waiting === 1 && (
              <span>Waiting for another device to confirm your request...</span>
            )}
          </Box>
          <Box>
            {data.waiting === 0 && (
              <Fragment>
                {!!data.auth_required && (
                  <Button
                    icon="check-square"
                    color="red"
                    textAlign="center"
                    lineHeight="60px"
                    fluid
                    onClick={() => act('auth_swipe')}
                    content="Authorize" />
                )}
                {data.auth_required === 0 && (
                  <Fragment>
                    <Button
                      icon="exclamation-triangle"
                      fluid
                      onClick={() => {
                        return act('red_alert');
                      }}
                      content="Red Alert" />
                    <Button
                      icon="wrench"
                      fluid
                      onClick={() => act('emergency_maint')}
                      content="Emergency Maintenance Access" />
                    <Button
                      icon="meteor"
                      fluid
                      onClick={() => act('bsa_unlock')}
                      content="Bluespace Artillery Unlock" />
                  </Fragment>
                )}
              </Fragment>
            )}
          </Box>
        </Section>
      </Window.Content>
    </Window>
  );
};
