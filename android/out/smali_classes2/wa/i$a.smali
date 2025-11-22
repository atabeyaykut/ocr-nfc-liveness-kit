.class public final Lwa/i$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/i;-><init>(Lcb/a;Lp4/g7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Map<",
        "Llb/f;",
        "+",
        "Lqb/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lwa/i;


# direct methods
.method public constructor <init>(Lwa/i;)V
    .locals 0

    iput-object p1, p0, Lwa/i$a;->a:Lwa/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lwa/e;->a:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v0, p0, Lwa/i$a;->a:Lwa/i;

    .line 4
    .line 5
    iget-object v0, v0, Lwa/b;->d:Lcb/b;

    .line 6
    .line 7
    instance-of v1, v0, Lcb/m;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcb/m;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sget-object v1, Lwa/e;->b:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Lcb/m;->d()Llb/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v0, v2

    .line 32
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lna/m;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v1, Lqb/k;

    .line 41
    .line 42
    sget-object v3, Lja/o$a;->v:Llb/c;

    .line 43
    .line 44
    invoke-static {v3}, Llb/b;->l(Llb/c;)Llb/b;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v3, v0}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v1, v2

    .line 61
    :goto_2
    if-eqz v1, :cond_3

    .line 62
    .line 63
    sget-object v0, Lwa/c;->c:Llb/f;

    .line 64
    .line 65
    new-instance v2, Ll9/g;

    .line 66
    .line 67
    invoke-direct {v2, v0, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lb8/f;->W(Ll9/g;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :cond_3
    if-nez v2, :cond_4

    .line 75
    .line 76
    sget-object v2, Lm9/w;->a:Lm9/w;

    .line 77
    .line 78
    :cond_4
    return-object v2
.end method
