.class public interface abstract Lbc/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# static fields
.field public static final a:Lbc/c$d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbc/c$d$a;

    invoke-direct {v0}, Lbc/c$d$a;-><init>()V

    sput-object v0, Lbc/c$d;->a:Lbc/c$d$a;

    return-void
.end method
