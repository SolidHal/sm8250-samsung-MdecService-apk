.class public final synthetic Lcom/samsung/android/cmcsettings/view/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

.field public final synthetic c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/g;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/g;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iput-boolean p3, p0, Lcom/samsung/android/cmcsettings/view/g;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/g;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/g;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iget-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/g;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->m(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void
.end method
