.class public final synthetic Lp4/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lv7/l;


# direct methods
.method public synthetic constructor <init>(Lv7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/r9;->a:Lv7/l;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp4/r9;->a:Lv7/l;

    invoke-virtual {v0}, Lv7/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
