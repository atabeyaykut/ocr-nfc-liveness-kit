.class public final Lad/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    .line 1
    sget-object v0, Lzc/c;->f:Lzc/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lzc/c;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of p1, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Lad/m;
    .locals 0

    new-instance p1, Lad/i;

    invoke-direct {p1}, Lad/i;-><init>()V

    return-object p1
.end method
