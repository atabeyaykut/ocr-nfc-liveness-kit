.class public final Lcc/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcc/x0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/x0$a;

    invoke-direct {v0}, Lcc/x0$a;-><init>()V

    sput-object v0, Lcc/x0$a;->a:Lcc/x0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/p1;Lcc/e0;Lcc/e0;Lma/w0;)V
    .locals 0

    return-void
.end method

.method public final b(Lma/v0;Lcc/s1;)V
    .locals 1

    const-string v0, "typeAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "substitutedArgument"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lna/c;)V
    .locals 0

    return-void
.end method

.method public final d(Lma/v0;)V
    .locals 1

    const-string v0, "typeAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
