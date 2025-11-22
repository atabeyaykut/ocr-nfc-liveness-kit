.class public final Ld0/l$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/l$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/l;->o(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;F)V
    .locals 0

    iput-object p1, p0, Ld0/l$i;->b:Ld0/l;

    iput p2, p0, Ld0/l$i;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld0/l$i;->b:Ld0/l;

    iget v1, p0, Ld0/l$i;->a:F

    invoke-virtual {v0, v1}, Ld0/l;->o(F)V

    return-void
.end method
