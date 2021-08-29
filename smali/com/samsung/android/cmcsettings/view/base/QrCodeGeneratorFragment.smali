.class public Lcom/samsung/android/cmcsettings/view/base/QrCodeGeneratorFragment;
.super Landroidx/preference/g;
.source "QrCodeGeneratorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120009

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/g;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "qr_code_generator_pref"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/preferences/QrCodeGeneratorPreference;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    return-void
.end method
