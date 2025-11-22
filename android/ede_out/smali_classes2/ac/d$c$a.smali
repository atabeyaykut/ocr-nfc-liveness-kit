.class public final Lac/d$c$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d$c;-><init>(Lac/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/f;",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d$c;

.field public final synthetic b:Lac/d;


# direct methods
.method public constructor <init>(Lac/d$c;Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$c$a;->a:Lac/d$c;

    iput-object p2, p0, Lac/d$c$a;->b:Lac/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Llb/f;

    .line 3
    .line 4
    const-string p1, "name"

    .line 5
    .line 6
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lac/d$c$a;->a:Lac/d$c;

    .line 10
    .line 11
    iget-object v0, p1, Lac/d$c;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lgb/f;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lac/d$c$a;->b:Lac/d;

    .line 22
    .line 23
    iget-object v3, v1, Lac/d;->m:Lyb/n;

    .line 24
    .line 25
    iget-object v3, v3, Lyb/n;->a:Lyb/l;

    .line 26
    .line 27
    iget-object v3, v3, Lyb/l;->a:Lbc/l;

    .line 28
    .line 29
    iget-object p1, p1, Lac/d$c;->c:Lbc/i;

    .line 30
    .line 31
    new-instance v4, Lac/a;

    .line 32
    .line 33
    iget-object v5, v1, Lac/d;->m:Lyb/n;

    .line 34
    .line 35
    iget-object v5, v5, Lyb/n;->a:Lyb/l;

    .line 36
    .line 37
    iget-object v5, v5, Lyb/l;->a:Lbc/l;

    .line 38
    .line 39
    new-instance v6, Lac/f;

    .line 40
    .line 41
    invoke-direct {v6, v1, v0}, Lac/f;-><init>(Lac/d;Lgb/f;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5, v6}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    .line 45
    .line 46
    .line 47
    sget-object v5, Lma/r0;->a:Lma/r0$a;

    .line 48
    .line 49
    move-object v0, v3

    .line 50
    move-object v3, p1

    .line 51
    invoke-static/range {v0 .. v5}, Lpa/s;->K0(Lbc/l;Lma/e;Llb/f;Lbc/i;Lna/h;Lma/r0;)Lpa/s;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    return-object p1
.end method
