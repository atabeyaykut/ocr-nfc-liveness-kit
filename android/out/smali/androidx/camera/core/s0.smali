.class public final synthetic Landroidx/camera/core/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ProcessingImageReader;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ProcessingImageReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/s0;->a:Landroidx/camera/core/ProcessingImageReader;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/s0;->a:Landroidx/camera/core/ProcessingImageReader;

    invoke-static {v0, p1}, Landroidx/camera/core/ProcessingImageReader;->a(Landroidx/camera/core/ProcessingImageReader;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
