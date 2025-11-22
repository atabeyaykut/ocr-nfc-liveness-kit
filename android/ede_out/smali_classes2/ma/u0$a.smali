.class public final Lma/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lma/u0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lma/u0$a;

    invoke-direct {v0}, Lma/u0$a;-><init>()V

    sput-object v0, Lma/u0$a;->a:Lma/u0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/h;Ljava/util/Collection;Lcc/i;Lcc/j;)Ljava/util/Collection;
    .locals 0

    const-string p3, "currentTypeConstructor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "superTypes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
