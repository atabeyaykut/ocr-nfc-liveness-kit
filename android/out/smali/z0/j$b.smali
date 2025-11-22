.class public final Lz0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lr1/d$a;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr1/d$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lr1/d$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz0/j$b;->b:Lr1/d$a;

    .line 10
    .line 11
    iput-object p1, p0, Lz0/j$b;->a:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final r()Lr1/d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz0/j$b;->b:Lr1/d$a;

    return-object v0
.end method
