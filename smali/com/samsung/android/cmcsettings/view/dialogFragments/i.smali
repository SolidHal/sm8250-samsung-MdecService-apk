.class public final synthetic Lcom/samsung/android/cmcsettings/view/dialogFragments/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/i;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/i;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
