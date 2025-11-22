.class public Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/c$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lz0/c$a;


# direct methods
.method public constructor <init>(Lz0/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xfa00000

    iput-wide v0, p0, Lz0/c;->a:J

    iput-object p1, p0, Lz0/c;->b:Lz0/c$a;

    return-void
.end method
