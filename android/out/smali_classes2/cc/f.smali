.class public final Lcc/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcc/b1$a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfc/i;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcc/b1;

.field public final synthetic c:Lfc/n;

.field public final synthetic d:Lfc/i;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcc/b1;Lfc/n;Lfc/i;)V
    .locals 0

    iput-object p1, p0, Lcc/f;->a:Ljava/util/List;

    iput-object p2, p0, Lcc/f;->b:Lcc/b1;

    iput-object p3, p0, Lcc/f;->c:Lfc/n;

    iput-object p4, p0, Lcc/f;->d:Lfc/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcc/b1$a;

    .line 2
    .line 3
    const-string v0, "$this$runForkingPoint"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcc/f;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lfc/i;

    .line 25
    .line 26
    new-instance v2, Lcc/e;

    .line 27
    .line 28
    iget-object v3, p0, Lcc/f;->b:Lcc/b1;

    .line 29
    .line 30
    iget-object v4, p0, Lcc/f;->c:Lfc/n;

    .line 31
    .line 32
    iget-object v5, p0, Lcc/f;->d:Lfc/i;

    .line 33
    .line 34
    invoke-direct {v2, v3, v4, v1, v5}, Lcc/e;-><init>(Lcc/b1;Lfc/n;Lfc/i;Lfc/i;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2}, Lcc/b1$a;->a(Lcc/e;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 42
    .line 43
    return-object p1
.end method
