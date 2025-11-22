.class public final Lwf/a;
.super Lcom/airbnb/epoxy/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSnapHelperFactory()Lcom/airbnb/epoxy/g$c;
    .locals 1

    invoke-virtual {p0}, Lwf/a;->getSnapHelperFactory()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/g$c;

    return-object v0
.end method

.method public getSnapHelperFactory()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
