# Visualizing pH data using the specified template settings

# Creating the data for pH
ph_data = {
    "Reading": ["1", "2", "Average"],
    "RVCC Pond": [6.79, 6.89, 6.84],
    "MUSCONETCONG River": [6.66, 7.13, 6.90]
}

# Convert to DataFrame
ph_df = pd.DataFrame(ph_data)

# Plotting with specified settings
fig, ax = plt.subplots(figsize=(8, 6), facecolor='#051b56')

# Bar plot for pH readings with specified colors and settings
ph_df.plot(kind='bar', x='Reading', y=['RVCC Pond', 'MUSCONETCONG River'], ax=ax, color=["#fc6244", "#0298ac"])
ax.set_title('pH Readings', color='white', fontsize=14, fontweight='bold')
ax.set_ylabel('pH Value', color='white', fontsize=12)
ax.set_xlabel('Reading', color='white', fontsize=12)
ax.grid(True, color='gray')
ax.tick_params(colors='white', which='both')
ax.set_facecolor('#051b56')
for spine in ax.spines.values():
    spine.set_edgecolor('white')
ax.legend(facecolor='#edf2fa')

plt.tight_layout()
plt.show()
