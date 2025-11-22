.class public final Lac/i$b$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/i$b;-><init>(Lac/i;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Lma/v0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/i$b;


# direct methods
.method public constructor <init>(Lac/i$b;)V
    .locals 0

    iput-object p1, p0, Lac/i$b$e;->a:Lac/i$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Llb/f;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lac/i$b$e;->a:Lac/i$b;

    .line 9
    .line 10
    iget-object v1, v0, Lac/i$b;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lac/i$b;->i:Lac/i;

    .line 27
    .line 28
    iget-object v0, p1, Lac/i;->b:Lyb/n;

    .line 29
    .line 30
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 31
    .line 32
    iget-object v0, v0, Lyb/l;->p:Lmb/f;

    .line 33
    .line 34
    sget-object v2, Lgb/q;->r:Lgb/q$a;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0}, Lmb/b;->c(Ljava/io/ByteArrayInputStream;Lmb/f;)Lmb/p;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lgb/q;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p1, Lac/i;->b:Lyb/n;

    .line 47
    .line 48
    iget-object p1, p1, Lyb/n;->i:Lyb/z;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lyb/z;->g(Lgb/q;)Lac/m;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    return-object p1
.end method
