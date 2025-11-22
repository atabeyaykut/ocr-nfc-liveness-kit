.class public abstract Lkotlin/jvm/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/a$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lda/c;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/a$a;->a:Lkotlin/jvm/internal/a$a;

    sput-object v0, Lkotlin/jvm/internal/a;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/a;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/a;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/a;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/a;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/a;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/a;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/a;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lda/c;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lda/c;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lda/c;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/a;->reflected:Lda/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->computeReflected()Lda/c;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/a;->reflected:Lda/c;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lda/c;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/b;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/a;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lda/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/a;->owner:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p0, Lkotlin/jvm/internal/a;->isTopLevel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v0, v2}, Lkotlin/jvm/internal/x;->c(Ljava/lang/Class;Ljava/lang/String;)Lda/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/j;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReflected()Lda/c;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->compute()Lda/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lw9/a;

    invoke-direct {v0}, Lw9/a;-><init>()V

    throw v0
.end method

.method public getReturnType()Lda/n;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->getReturnType()Lda/n;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/a;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/o;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lda/q;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->getVisibility()Lda/q;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->getReflected()Lda/c;

    move-result-object v0

    invoke-interface {v0}, Lda/c;->isSuspend()Z

    move-result v0

    return v0
.end method
