.class public final Lud/a;
.super Lud/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/a$c;,
        Lud/a$a;,
        Lud/a$f;,
        Lud/a$e;,
        Lud/a$b;,
        Lud/a$d;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lud/f$a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lud/a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lud/f;
    .locals 0

    const-class p2, Lrc/a0;

    invoke-static {p1}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lud/a$b;->a:Lud/a$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lud/d0;)Lud/f;
    .locals 0
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

    const-class p3, Lrc/d0;

    if-ne p1, p3, :cond_1

    const-class p1, Lxd/w;

    invoke-static {p2, p1}, Lud/h0;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lud/a$c;->a:Lud/a$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lud/a$a;->a:Lud/a$a;

    :goto_0
    return-object p1

    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    sget-object p1, Lud/a$f;->a:Lud/a$f;

    return-object p1

    :cond_2
    iget-boolean p2, p0, Lud/a;->a:Z

    if-eqz p2, :cond_3

    :try_start_0
    const-class p2, Ll9/m;

    if-ne p1, p2, :cond_3

    sget-object p1, Lud/a$e;->a:Lud/a$e;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lud/a;->a:Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
