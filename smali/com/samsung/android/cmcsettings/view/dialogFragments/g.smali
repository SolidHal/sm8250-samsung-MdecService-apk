.class public final synthetic Lcom/samsung/android/cmcsettings/view/dialogFragments/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    iput p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->b(ILandroid/content/DialogInterface;I)V

    return-void
.end method
