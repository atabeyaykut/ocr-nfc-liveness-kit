.class public final Lac/e;
.super Lob/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lac/e;->a:Ljava/util/List;

    invoke-direct {p0}, Lob/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Lma/b;)V
    .locals 1

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lob/n;->r(Lma/b;Lx9/l;)V

    iget-object v0, p0, Lac/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t(Lma/b;Lma/b;)V
    .locals 1

    const-string v0, "fromSuper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCurrent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lpa/x;

    if-eqz v0, :cond_0

    check-cast p2, Lpa/x;

    sget-object v0, Lma/r;->a:Lma/r;

    invoke-virtual {p2, v0, p1}, Lpa/x;->P0(Lma/a$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
