- Welcome to Amoeba Circus
- Goal: Ringmaster needs an application that will allow him to schedule his acts for his upcoming amoeba circus
- Performer:
  - name, talent, generation number (based on splits), foreign_id: talent
  - relationships: belongs_to talent, has_many acts
- Acts:
  - name, date, time of performance, list of all the amoebas peforming for that act
    - relationships: has_many performers
- Talent:
  - talent 
  - relationships: has_many performers
- PerformerActor
- 1 Join Table: performer_act

PLAN:
# 1. Do full scaffold for performers
# 2. Do full scaffold for acts
# 3. Do model for performers
# 4. Do model for peformer_act (join table)
# 5. Add/check associations
# 6. Run migrations
# 7. Make seed data
# 8. Make the "new act" have checkboxes of performers
# 9. Fix views for performers to show talent.name
# 10. Add seed data with connections between acts and perfomers
# 11. Fix views for acts to show performers
#12. Make the "new performer" have checkboxes for acts
#13. Check all functionatlity
  # - talent on new performer isn't working
  # - think about talent association for new performer

- App Functionality
  - display all amoebas (link name to show that amoeba)
  -> /performers
  - show an individual amoeba (include a link to split amoeba using custom routes)
  -> /performers/:id 
  -> /performers/:id/split
  - edit an individual amoeba so that it can be added to an act
  -> /performers/:id/edit
  - display all acts
  -> /acts
  - show an individual act (that displays its date and all the amoeba actors assigned to it)
  -> /acts/:id
  - edit an individual act
  -> /acts/:id/edit
  - bonus view: a single dashboard view that shows all acts, all amoebas, and a form to move amoebas


