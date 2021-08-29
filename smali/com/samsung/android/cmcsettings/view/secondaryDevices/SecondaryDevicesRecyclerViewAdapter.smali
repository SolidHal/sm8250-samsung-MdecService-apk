.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SecondaryDevicesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$r<",
        "Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private secondaryDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private switchClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->switchClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private static checkAndLaunchGalaxyWearablesApp(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.mdecservice.EXT_GALAXY_WEARABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const v5, 0x7f0f0090

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "com.samsung.android.uhm.framework.appregistry.BaseContentProvider.provider"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/Device"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "bt_id"

    .line 12
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSamsungUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/cmcsettings/utils/Utils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "connected"

    .line 16
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v7, "reserved_a"

    .line 17
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    const-string v5, "BT"

    .line 18
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 20
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 23
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 26
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    const p0, 0x7f0f0053

    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_main_wearable_sd_click:I

    const/16 v1, 0x6f

    invoke-static {p1, v1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->checkAndLaunchGalaxyWearablesApp(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    return-void
.end method

.method private getSwitchCheckedState(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_active()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private updateSwitchWidgetCheckedState(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2
    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->getSwitchCheckedState(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private updateUI(ZLcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 4
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 8
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 9
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setVisibility(I)V

    .line 10
    iget-object p1, p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method addSecondaryDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$r0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->onBindViewHolder(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_category()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_category()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BT-Watch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_active()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_active()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->updateUI(ZLcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;)V

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->updateSwitchWidgetCheckedState(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    .line 11
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->switchClickListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->updateUI(ZLcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->updateSwitchWidgetCheckedState(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    .line 14
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->getSummary(Ljava/lang/String;)I

    move-result v0

    .line 15
    iget-object v2, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getMdecDeviceInfo(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)Ljava/util/Optional;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRespectiveControl()Z

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    .line 20
    :goto_2
    iget-object v4, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 21
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_active()I

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0f006f

    if-eq v0, p2, :cond_4

    if-eqz v2, :cond_4

    .line 22
    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_4
    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    .line 24
    :cond_5
    :goto_4
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->summary:Landroid/widget/TextView;

    const v2, 0x7f0f0114

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setVisibility(I)V

    .line 26
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 28
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/b;

    invoke-direct {v1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/b;-><init>(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;
    .locals 3

    .line 2
    new-instance p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
