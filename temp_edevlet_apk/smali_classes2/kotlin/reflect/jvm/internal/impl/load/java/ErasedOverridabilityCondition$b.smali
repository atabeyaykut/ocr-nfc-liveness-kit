.class public final Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition;->b(Lma/a;Lma/a;Lma/e;)Lob/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/a1;",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lma/a1;

    .line 2
    .line 3
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
