.class public final Lud/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/e$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/c<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "Lud/c0<",
        "TR;>;>;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/e$c;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lud/e$c;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final b(Lud/u;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lud/e$b;

    invoke-direct {v0, p1}, Lud/e$b;-><init>(Lud/u;)V

    new-instance v1, Lud/e$c$a;

    invoke-direct {v1, v0}, Lud/e$c$a;-><init>(Lud/e$b;)V

    invoke-virtual {p1, v1}, Lud/u;->n0(Lud/d;)V

    return-object v0
.end method
