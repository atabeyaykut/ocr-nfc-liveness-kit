.class public final Lc6/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lx6/c;


# direct methods
.method public constructor <init>(Lx6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/y$a;->a:Lx6/c;

    return-void
.end method
