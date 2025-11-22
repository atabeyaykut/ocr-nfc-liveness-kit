.class public final Lt1/o;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/util/List<",
        "+",
        "Ld2/b;",
        ">;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc6/a;

.field public final synthetic b:Lt1/u;


# direct methods
.method public constructor <init>(Lt1/d;Lt1/u;)V
    .locals 0

    iput-object p1, p0, Lt1/o;->a:Lc6/a;

    iput-object p2, p0, Lt1/o;->b:Lt1/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lt1/o;->a:Lc6/a;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    instance-of v1, v0, Lv1/a;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lc6/a;->m()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    iget-object v1, p0, Lt1/o;->b:Lt1/u;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Lt1/m;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lt1/m;-><init>(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lt1/u;->a(Lx9/l;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    sget-object p1, Lt1/n;->a:Lt1/n;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lt1/u;->a(Lx9/l;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 46
    .line 47
    return-object p1
.end method
