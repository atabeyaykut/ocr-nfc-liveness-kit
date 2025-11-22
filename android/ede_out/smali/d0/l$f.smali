.class public final Ld0/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/l$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/l;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;)V
    .locals 0

    iput-object p1, p0, Ld0/l$f;->a:Ld0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld0/l$f;->a:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->f()V

    return-void
.end method
