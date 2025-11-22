.class public final Lvb/m$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/m;-><init>(Lbc/l;Lma/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lma/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lvb/m;


# direct methods
.method public constructor <init>(Lvb/m;)V
    .locals 0

    iput-object p1, p0, Lvb/m$a;->a:Lvb/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lma/q0;

    .line 3
    .line 4
    iget-object v1, p0, Lvb/m$a;->a:Lvb/m;

    .line 5
    .line 6
    iget-object v2, v1, Lvb/m;->b:Lma/e;

    .line 7
    .line 8
    invoke-static {v2}, Lob/h;->f(Lma/e;)Lpa/p0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 14
    .line 15
    iget-object v1, v1, Lvb/m;->b:Lma/e;

    .line 16
    .line 17
    invoke-static {v1}, Lob/h;->g(Lma/e;)Lpa/p0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
