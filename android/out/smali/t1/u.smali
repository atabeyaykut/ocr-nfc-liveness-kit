.class public final Lt1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx1/a;

.field public final b:Lu1/a;

.field public final c:Lc2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc2/b<",
            "Lt1/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx1/a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/u;->a:Lx1/a;

    .line 5
    .line 6
    sget-object p1, Lc5/e0;->q:Lt1/c;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lt1/c;->b()Lu1/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lt1/u;->b:Lu1/a;

    .line 15
    .line 16
    new-instance p1, Lc2/b;

    .line 17
    .line 18
    new-instance v7, Lt1/w;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    const/16 v6, 0x77

    .line 26
    .line 27
    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lt1/w;-><init>(Ljava/util/List;Ljava/util/List;Lc2/c;ZLc2/c;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v7}, Lc2/b;-><init>(Lt1/w;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lt1/u;->c:Lc2/b;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p1, "internalComponents"

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1
.end method


# virtual methods
.method public final a(Lx9/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Lt1/w;",
            "Lt1/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/u;->c:Lc2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lc2/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, v0, Lc2/b;->a:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    iput-object p1, v0, Lc2/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
