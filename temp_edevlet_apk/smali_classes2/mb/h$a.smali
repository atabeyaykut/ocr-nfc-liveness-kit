.class public abstract Lmb/h$a;
.super Lmb/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lmb/h;",
        "BuilderType:",
        "Lmb/h$a;",
        ">",
        "Lmb/a$a<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field public a:Lmb/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/a$a;-><init>()V

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lmb/h$a;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmb/h$a;->i()Lmb/h$a;

    move-result-object v0

    return-object v0
.end method

.method public i()Lmb/h$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract j(Lmb/h;)Lmb/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
