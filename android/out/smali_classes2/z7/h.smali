.class public final Lz7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/g;


# instance fields
.field public final a:Lp4/ta;


# direct methods
.method public constructor <init>(Lp4/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/h;->a:Lp4/ta;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lz7/h;->a:Lp4/ta;

    iget v0, v0, Lp4/ta;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lz7/h;->a:Lp4/ta;

    iget v0, v0, Lp4/ta;->f:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz7/h;->a:Lp4/ta;

    iget-object v0, v0, Lp4/ta;->c:Ljava/lang/String;

    return-object v0
.end method
