.class public final Lwa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/a;->k(Lma/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/l<",
        "Lma/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lwa/a;


# direct methods
.method public constructor <init>(Lwa/a;)V
    .locals 0

    iput-object p1, p0, Lwa/a$a;->a:Lwa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lma/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lwa/a$a;->a:Lwa/a;

    .line 6
    .line 7
    iget-object v0, v0, Lwa/a;->a:Lyb/u;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lyb/u;->k(Lma/b;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x3

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const-string v1, "descriptor"

    .line 20
    .line 21
    aput-object v1, p1, v0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const-string v1, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1"

    .line 25
    .line 26
    aput-object v1, p1, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    const-string v1, "invoke"

    .line 30
    .line 31
    aput-object v1, p1, v0

    .line 32
    .line 33
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 34
    .line 35
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
