.class public final Lcc/g0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldc/f;",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/c1;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lvb/i;


# direct methods
.method public constructor <init>(Ljava/util/List;Lvb/i;Lcc/a1;Lcc/c1;Z)V
    .locals 0

    iput-object p4, p0, Lcc/g0;->a:Lcc/c1;

    iput-object p1, p0, Lcc/g0;->b:Ljava/util/List;

    iput-object p2, p0, Lcc/g0;->c:Lvb/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ldc/f;

    .line 2
    .line 3
    const-string v0, "kotlinTypeRefiner"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcc/f0;->a:I

    .line 9
    .line 10
    iget-object v0, p0, Lcc/g0;->a:Lcc/c1;

    .line 11
    .line 12
    iget-object v1, p0, Lcc/g0;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcc/f0;->a(Lcc/c1;Ldc/f;Ljava/util/List;)Lcc/f0$b;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method
