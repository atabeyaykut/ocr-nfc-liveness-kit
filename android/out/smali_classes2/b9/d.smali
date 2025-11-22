.class public final Lb9/d;
.super Ly8/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly8/d<",
        "TT;>;",
        "Ljava/util/concurrent/Callable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj9/a;)V
    .locals 0

    invoke-direct {p0}, Ly8/d;-><init>()V

    iput-object p1, p0, Lb9/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lb9/d;->a:Ljava/lang/Object;

    return-object v0
.end method
