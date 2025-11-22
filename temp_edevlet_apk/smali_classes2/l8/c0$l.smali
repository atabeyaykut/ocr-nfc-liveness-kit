.class public final Ll8/c0$l;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/p<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ll8/b0;

.field public final b:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll8/b0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ll8/p;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll8/c0$l;->a:Ll8/b0;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lm8/a;->a:Ljava/util/Set;

    .line 10
    .line 11
    const-class v1, Ljava/util/List;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v0, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Ll8/c0$l;->b:Ll8/p;

    .line 19
    .line 20
    const-class v1, Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Ll8/c0$l;->c:Ll8/p;

    .line 27
    .line 28
    const-class v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Ll8/c0$l;->d:Ll8/p;

    .line 35
    .line 36
    const-class v1, Ljava/lang/Double;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Ll8/c0$l;->e:Ll8/p;

    .line 43
    .line 44
    const-class v1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Ll8/c0$l;->f:Ll8/p;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ll8/u;->k()Ll8/u$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ll8/u;->i()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ll8/u;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ll8/c0$l;->f:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ll8/c0$l;->e:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Ll8/c0$l;->d:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Ll8/c0$l;->c:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v0, p0, Ll8/c0$l;->b:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ll8/y;->b()Ll8/y;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ll8/y;->e()Ll8/y;

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-class v1, Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :goto_0
    move-object v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-class v1, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    sget-object v1, Lm8/a;->a:Ljava/util/Set;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    iget-object v3, p0, Ll8/c0$l;->a:Ll8/b0;

    .line 39
    .line 40
    invoke-virtual {v3, v0, v1, v2}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JsonAdapter(Object)"

    return-object v0
.end method
