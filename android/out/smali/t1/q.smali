.class public final Lt1/q;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lt1/w;",
        "Lt1/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lt1/d;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt1/d;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lt1/q;->a:Lt1/d;

    iput-object p2, p0, Lt1/q;->b:Ljava/util/List;

    iput-object p3, p0, Lt1/q;->c:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lt1/w;

    .line 2
    .line 3
    const-string v0, "$this$setState"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lt1/q;->a:Lt1/d;

    .line 9
    .line 10
    iget-boolean p1, p1, Lt1/d;->h:Z

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v3, Lc2/c;

    .line 17
    .line 18
    invoke-direct {v3, p1}, Lc2/c;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lt1/w;

    .line 22
    .line 23
    iget-object v1, p0, Lt1/q;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p0, Lt1/q;->c:Ljava/util/List;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0x70

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    invoke-direct/range {v0 .. v6}, Lt1/w;-><init>(Ljava/util/List;Ljava/util/List;Lc2/c;ZLc2/c;I)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method
