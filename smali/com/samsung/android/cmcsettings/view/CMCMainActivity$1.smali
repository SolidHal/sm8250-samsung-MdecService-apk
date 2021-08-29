.class Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;
.super Ljava/util/TimerTask;
.source "CMCMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removePreviousFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

.field final synthetic val$ft:Landroidx/fragment/app/k;

.field final synthetic val$prevFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Landroidx/fragment/app/k;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;->val$ft:Landroidx/fragment/app/k;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;->val$prevFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;->val$ft:Landroidx/fragment/app/k;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;->val$prevFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    return-void
.end method
