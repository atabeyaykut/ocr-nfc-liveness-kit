.class public final Lt1/h;
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
.field public final synthetic a:Lt1/g;

.field public final synthetic b:Lt1/l;

.field public final synthetic c:Lt1/d;


# direct methods
.method public constructor <init>(Lt1/g;Lt1/l;Lt1/d;)V
    .locals 0

    iput-object p1, p0, Lt1/h;->a:Lt1/g;

    iput-object p2, p0, Lt1/h;->b:Lt1/l;

    iput-object p3, p0, Lt1/h;->c:Lt1/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "selectedImages"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lt1/g;->j:I

    .line 9
    .line 10
    iget-object v0, p0, Lt1/h;->a:Lt1/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lt1/g;->E()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lt1/h;->b:Lt1/l;

    .line 16
    .line 17
    invoke-interface {v1}, Lt1/l;->j()V

    .line 18
    .line 19
    .line 20
    const-string v1, "config"

    .line 21
    .line 22
    iget-object v2, p0, Lt1/h;->c:Lt1/d;

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    instance-of v1, v2, Lv1/a;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    iget v2, v2, Lt1/d;->r:I

    .line 35
    .line 36
    if-eq v2, v1, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    if-ne v2, v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 45
    :goto_1
    if-eqz v1, :cond_3

    .line 46
    .line 47
    check-cast p1, Ljava/util/Collection;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    xor-int/2addr p1, v3

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lt1/g;->D()V

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 60
    .line 61
    return-object p1
.end method
