.class public final synthetic Lcom/samsung/android/cmcsettings/view/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/l;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/l;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->d(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Z)V

    return-void
.end method
