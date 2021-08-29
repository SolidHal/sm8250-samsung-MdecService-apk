.class public final synthetic Lcom/samsung/android/cmcsettings/view/dialogFragments/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    iput p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->c:I

    iput-boolean p3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->c:I

    iget-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;->d:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->a(IZLandroid/content/DialogInterface;I)V

    return-void
.end method
