.class public final Lac/d$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$e;->a:Lac/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lac/d$e;->a:Lac/d;

    .line 2
    .line 3
    iget-object v1, v0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v2, v1, Lgb/b;->c:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    and-int/2addr v2, v3

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v2, v0, Lac/d;->m:Lyb/n;

    .line 18
    .line 19
    iget-object v2, v2, Lyb/n;->b:Lib/c;

    .line 20
    .line 21
    iget v1, v1, Lgb/b;->f:I

    .line 22
    .line 23
    invoke-static {v2, v1}, La6/a;->o(Lib/c;I)Llb/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lac/d;->K0()Lac/d$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Lua/c;->g:Lua/c;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lac/d$a;->e(Llb/f;Lua/c;)Lma/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v1, v0, Lma/e;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    check-cast v0, Lma/e;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 45
    :goto_2
    return-object v0
.end method
