.class public final synthetic Lcom/samsung/android/cmcsettings/view/routine/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/widget/RadioGroup;

.field public final synthetic c:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioGroup;Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/routine/c;->b:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/routine/c;->c:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/routine/c;->b:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/routine/c;->c:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->c(Landroid/widget/RadioGroup;Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
