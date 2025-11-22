.class public final synthetic Lsa/k;
.super Lkotlin/jvm/internal/f;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/f;",
        "Lx9/l<",
        "Ljava/lang/reflect/Constructor<",
        "*>;",
        "Lsa/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lsa/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsa/k;

    invoke-direct {v0}, Lsa/k;-><init>()V

    sput-object v0, Lsa/k;->a:Lsa/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final getOwner()Lda/f;
    .locals 1

    const-class v0, Lsa/u;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>(Ljava/lang/reflect/Constructor;)V"

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    const-string v0, "p0"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lsa/u;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lsa/u;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
