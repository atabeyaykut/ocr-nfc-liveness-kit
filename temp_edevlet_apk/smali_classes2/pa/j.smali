.class public final Lpa/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Llb/f;

.field public final synthetic b:Lpa/k;


# direct methods
.method public constructor <init>(Lpa/k;Llb/f;)V
    .locals 0

    iput-object p1, p0, Lpa/j;->b:Lpa/k;

    iput-object p2, p0, Lpa/j;->a:Llb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/a1;->c:Lcc/a1;

    .line 7
    .line 8
    iget-object v1, p0, Lpa/j;->b:Lpa/k;

    .line 9
    .line 10
    invoke-virtual {v1}, Lpa/k;->i()Lcc/c1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lvb/h;

    .line 19
    .line 20
    new-instance v4, Lpa/i;

    .line 21
    .line 22
    invoke-direct {v4, p0}, Lpa/i;-><init>(Lpa/j;)V

    .line 23
    .line 24
    .line 25
    sget-object v5, Lbc/c;->e:Lbc/c$a;

    .line 26
    .line 27
    const-string v6, "NO_LOCKS"

    .line 28
    .line 29
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v5, v4}, Lvb/h;-><init>(Lbc/l;Lx9/a;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {v2, v3, v0, v1, v4}, Lcc/f0;->h(Ljava/util/List;Lvb/i;Lcc/a1;Lcc/c1;Z)Lcc/m0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
