.class public final Lud/v;
.super Lud/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/v$a;
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Lud/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lud/v;

    invoke-direct {v0}, Lud/v;-><init>()V

    sput-object v0, Lud/v;->a:Lud/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lud/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lud/d0;)Lud/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lud/d0;",
            ")",
            "Lud/f<",
            "Lrc/d0;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/util/Optional;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0, p1}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p3, p1, p2}, Lud/d0;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lud/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lud/v$a;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lud/v$a;-><init>(Lud/f;)V

    .line 25
    .line 26
    .line 27
    return-object p2
.end method
