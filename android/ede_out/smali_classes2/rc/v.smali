.class public final Lrc/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lrc/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/v$a;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:Lcom/airbnb/epoxy/a;

.field public final a:Lrc/l;

.field public final b:Lc5/b4;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lrc/n$b;

.field public final f:Z

.field public final g:Lrc/b;

.field public final h:Z

.field public final j:Z

.field public final k:Lrc/k;

.field public final l:Lrc/m;

.field public final m:Ljava/net/ProxySelector;

.field public final n:Lrc/b;

.field public final p:Ljavax/net/SocketFactory;

.field public final q:Ljavax/net/ssl/SSLSocketFactory;

.field public final r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/i;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/w;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljavax/net/ssl/HostnameVerifier;

.field public final w:Lrc/f;

.field public final x:Lcd/c;

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lrc/w;

    sget-object v2, Lrc/w;->e:Lrc/w;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lrc/w;->c:Lrc/w;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lsc/c;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lrc/v;->C:Ljava/util/List;

    new-array v0, v0, [Lrc/i;

    sget-object v1, Lrc/i;->e:Lrc/i;

    aput-object v1, v0, v3

    sget-object v1, Lrc/i;->f:Lrc/i;

    aput-object v1, v0, v4

    invoke-static {v0}, Lsc/c;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lrc/v;->D:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lrc/v$a;

    invoke-direct {v0}, Lrc/v$a;-><init>()V

    invoke-direct {p0, v0}, Lrc/v;-><init>(Lrc/v$a;)V

    return-void
.end method

.method public constructor <init>(Lrc/v$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lrc/v$a;->a:Lrc/l;

    .line 2
    iput-object v0, p0, Lrc/v;->a:Lrc/l;

    .line 3
    iget-object v0, p1, Lrc/v$a;->b:Lc5/b4;

    .line 4
    iput-object v0, p0, Lrc/v;->b:Lc5/b4;

    .line 5
    iget-object v0, p1, Lrc/v$a;->c:Ljava/util/ArrayList;

    .line 6
    invoke-static {v0}, Lsc/c;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrc/v;->c:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lrc/v$a;->d:Ljava/util/ArrayList;

    .line 8
    invoke-static {v0}, Lsc/c;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrc/v;->d:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lrc/v$a;->e:Lsc/a;

    .line 10
    iput-object v0, p0, Lrc/v;->e:Lrc/n$b;

    .line 11
    iget-boolean v0, p1, Lrc/v$a;->f:Z

    .line 12
    iput-boolean v0, p0, Lrc/v;->f:Z

    .line 13
    iget-object v0, p1, Lrc/v$a;->g:Lx5/a;

    .line 14
    iput-object v0, p0, Lrc/v;->g:Lrc/b;

    .line 15
    iget-boolean v0, p1, Lrc/v$a;->h:Z

    .line 16
    iput-boolean v0, p0, Lrc/v;->h:Z

    .line 17
    iget-boolean v0, p1, Lrc/v$a;->i:Z

    .line 18
    iput-boolean v0, p0, Lrc/v;->j:Z

    .line 19
    iget-object v0, p1, Lrc/v$a;->j:Lb8/f;

    .line 20
    iput-object v0, p0, Lrc/v;->k:Lrc/k;

    .line 21
    iget-object v0, p1, Lrc/v$a;->k:La0/b;

    .line 22
    iput-object v0, p0, Lrc/v;->l:Lrc/m;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lbd/a;->a:Lbd/a;

    :goto_0
    iput-object v0, p0, Lrc/v;->m:Ljava/net/ProxySelector;

    .line 23
    iget-object v0, p1, Lrc/v$a;->l:Lx5/a;

    .line 24
    iput-object v0, p0, Lrc/v;->n:Lrc/b;

    .line 25
    iget-object v0, p1, Lrc/v$a;->m:Ljavax/net/SocketFactory;

    .line 26
    iput-object v0, p0, Lrc/v;->p:Ljavax/net/SocketFactory;

    .line 27
    iget-object v0, p1, Lrc/v$a;->n:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lrc/v;->s:Ljava/util/List;

    .line 29
    iget-object v1, p1, Lrc/v$a;->o:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lrc/v;->t:Ljava/util/List;

    .line 31
    iget-object v1, p1, Lrc/v$a;->p:Lcd/d;

    .line 32
    iput-object v1, p0, Lrc/v;->v:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    iget v1, p1, Lrc/v$a;->r:I

    .line 34
    iput v1, p0, Lrc/v;->y:I

    .line 35
    iget v1, p1, Lrc/v$a;->s:I

    .line 36
    iput v1, p0, Lrc/v;->z:I

    .line 37
    iget v1, p1, Lrc/v$a;->t:I

    .line 38
    iput v1, p0, Lrc/v;->A:I

    new-instance v1, Lcom/airbnb/epoxy/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/airbnb/epoxy/a;-><init>(I)V

    iput-object v1, p0, Lrc/v;->B:Lcom/airbnb/epoxy/a;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrc/i;

    .line 39
    iget-boolean v1, v1, Lrc/i;->a:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 40
    iput-object v1, p0, Lrc/v;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lrc/v;->x:Lcd/c;

    iput-object v1, p0, Lrc/v;->r:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lrc/f;->c:Lrc/f;

    goto :goto_3

    :cond_4
    sget-object v0, Lzc/h;->c:Lzc/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-object v0, Lzc/h;->a:Lzc/h;

    .line 42
    invoke-virtual {v0}, Lzc/h;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lrc/v;->r:Ljavax/net/ssl/X509TrustManager;

    .line 43
    sget-object v4, Lzc/h;->a:Lzc/h;

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lzc/h;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iput-object v4, p0, Lrc/v;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 45
    sget-object v4, Lzc/h;->a:Lzc/h;

    .line 46
    invoke-virtual {v4, v0}, Lzc/h;->b(Ljavax/net/ssl/X509TrustManager;)Lcd/c;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lrc/v;->x:Lcd/c;

    .line 48
    iget-object p1, p1, Lrc/v$a;->q:Lrc/f;

    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 50
    iget-object v4, p1, Lrc/f;->b:Lcd/c;

    .line 51
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Lrc/f;

    iget-object p1, p1, Lrc/f;->a:Ljava/util/Set;

    invoke-direct {v4, p1, v0}, Lrc/f;-><init>(Ljava/util/Set;Lcd/c;)V

    move-object p1, v4

    .line 52
    :goto_3
    iput-object p1, p0, Lrc/v;->w:Lrc/f;

    .line 53
    iget-object p1, p0, Lrc/v;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz p1, :cond_17

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_16

    iget-object p1, p0, Lrc/v;->d:Ljava/util/List;

    if-eqz p1, :cond_15

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_14

    iget-object p1, p0, Lrc/v;->s:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc/i;

    .line 54
    iget-boolean v0, v0, Lrc/i;->a:Z

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x1

    .line 55
    :goto_5
    iget-object v0, p0, Lrc/v;->r:Ljavax/net/ssl/X509TrustManager;

    iget-object v1, p0, Lrc/v;->x:Lcd/c;

    iget-object v4, p0, Lrc/v;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_10

    if-nez v4, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    const-string v4, "Check failed."

    if-eqz p1, :cond_f

    if-nez v1, :cond_a

    const/4 p1, 0x1

    goto :goto_7

    :cond_a
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_e

    if-nez v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_d

    iget-object p1, p0, Lrc/v;->w:Lrc/f;

    sget-object v0, Lrc/f;->c:Lrc/f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-eqz v4, :cond_13

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    :goto_8
    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Lrc/x;)Lvc/e;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvc/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lvc/e;-><init>(Lrc/v;Lrc/x;Z)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
